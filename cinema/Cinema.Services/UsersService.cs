﻿using System;
using System.Collections.Generic;
using System.Linq;
using Cinema.DataAccess;
using Cinema.Domain.Interfaces;
using Cinema.Domain.Models;
using Microsoft.AspNetCore.Mvc;

namespace Cinema.Services
{
    public class UsersService : IUsersService
    {
        private readonly CinemaContext _cinemaContext;
        public UsersService(CinemaContext cinemaContext)
        {
            _cinemaContext = cinemaContext;
        }

        public List<User> GetUsers()
        {
            return _cinemaContext.User.ToList();
        }

        public ActionResult<User> GetUserByCredentials(string username, string password)
        {
            var firstOrDefault = _cinemaContext.User.FirstOrDefault(e => e.Name == username && e.Password == password);
            return firstOrDefault;
        }

        public void PostUser([FromBody] User user)
        {
            if (user != null)
                _cinemaContext.User.Add(user);
            _cinemaContext.SaveChanges();
        }

        public void PutUser(int id, [FromBody]User user)
        {
            User entity = _cinemaContext.User.FirstOrDefault(e => e.Id == id);
            if (entity != null)
            {
                entity.Id = user.Id;
                entity.Name = user.Name;
                entity.Email = user.Email;
                entity.Password = user.Password;
                entity.IsAdmin = user.IsAdmin;
            }

            _cinemaContext.SaveChanges();
        }

        public void DeleteUser(int id)
        {
            _cinemaContext.User.Remove(_cinemaContext.User.FirstOrDefault(e => e.Id == id) ?? throw new InvalidOperationException());
            _cinemaContext.SaveChanges();
        }
    }
}
