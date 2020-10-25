Exercise:
1. Vueling asks us to digitize its system because until now we did everything by hand. (That’s why there were so many delays).
They want to register each aircraft that the company has according to a unique code, number of people that fit in it and its model. Each aircraft has a number of seats identified by a unique number.
AIRCRAFT TABLE
_avio id (int and unique)
capacity (int)
model (varchar)
TABLE SEATS
_seating id (int and unique)
avio_id (int)
....

2. We have a picture shop. We want to store the stock of all the paintings on sale. A painting has an identifier, a price, and an author, although there are anonymous author paintings. It must be recorded by identifying the buyer with one of the paintings sold. About the buyer we will want to save the name, surname and dni

3. Youtube has seen that we are very good and wants to hire us to make software. In this software, which we will call Stube, a user will have a list of all the videos he has posted.
A user has an email and a password.
The videos will have a description, a title, a file url and an identifier (EX: https://www.youtube.com/watch?v=mfKr-1I4q3Aw the video identifier would be: "mfKr-1I4q3Aw").

4. As we are the jungle beasts, Amazon has asked us to make software for them. (Youtube didn't pay well enough)
We want to have a catalog of all the books on sale, how many units are available and their price. An author will have an address and whether he has written one or more books.
A user has a username, email, and password. When a user purchases one or more books, an invoice is stored with each item they have purchased referenced.

5. We have a social network. We want to store the name, email and password of each user. Each user will have a unique id that identifies them. Users can be friends with each other if they need to know how they met.
A user can upload multiple photos that are taken in one place (address) and will be identified with a unique code. The photo itself will not be stored, but the URL where it can be found.

6. Final practice:
An optician, called "Cul d'Ampolla", wants to computerize the management of customers and sales of glasses.
First of all the optician wants to know which is the supplier of each of the glasses.
Specifically, you want to know the name, address (street, number, floor, door, city, postal code and country) of each provider, telephone, fax, NIF.
The purchasing policy of the optician is based on the fact that the glasses of one brand will be bought from a single supplier (so you can get better prices), but they can buy glasses from several brands from one supplier. From the glasses you want to know, the brand, the graduation of each of the glasses, the type of frame (floating, paste or metal), the color of the frame, the color of each glass and the price.
From customers want to store name, mailing address, phone, email and registration date. We are also asked, when a new customer arrives, to store the customer who has recommended the establishment (as long as someone has recommended it).
Our system will need to indicate who the employee who sold each pair of glasses was.
