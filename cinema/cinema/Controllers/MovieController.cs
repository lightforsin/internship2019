﻿using System;
using System.Collections.Generic;
using Cinema.Domain.Interfaces;
using Cinema.Domain.Models;
using Microsoft.AspNetCore.Mvc;
using NLog.Fluent;

namespace Cinema.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieController : Controller
    {
        private readonly IMoviesService _movieService;
        public MovieController(IMoviesService movieService)
        {
            _movieService = movieService;
        }

        // GET: api/movie
        [HttpGet]
        public IEnumerable<Movie> GetMovies(DateTime date)
        {
            try
            {
                return _movieService.GetMovies(date);
            }
            catch (Exception exception)
            {
                throw exception;
            }
        }

        // GET api/movie/5
        [HttpGet("{id}")]
        public ActionResult<Movie> GetMovie(int id)
        {
            try
            {
                return _movieService.GetMovie(id);
            }
            catch (NullReferenceException exception)
            {
                Log.Error(string.Format("The movie with the following ID doesn't exist", id));
                throw exception;
            }
        }

        // POST api/movie
        [HttpPost]
        public void PostMovie(Movie movie)
        {
            try
            {
                _movieService.PostMovie(movie);
            }
            catch (Exception exception)
            {
                throw exception;
            }
        }

        // PUT api/movie/5
        [HttpPut("{id}")]
        public void PutMovie(int id, [FromBody]Movie movie)
        {
            try
            {
                _movieService.PutMovie(id, movie);
            }
            catch (Exception exception)
            {
                throw exception;
            }
        }

        // DELETE api/movie/5
        [HttpDelete("{id}")]
        public void DeleteMovie(int id)
        {
            try
            {
                _movieService.DeleteMovie(id);
            }
            catch (Exception exception)
            {
                throw exception;
            }
        }
    }
}