This is the project that I made for a challenge. Here I made a simple transaction on a video game store, it only has 3 tables, and that is : games, carts, and users; It implements REST api architecture for the requests and uses Tymon JWT for authentication. 

---------------------------------------------------------------------Database Design-----------------------------------------------------------------

You can see the database design on the image below, the primary key of each table is the first column of each table, each table primary key is auto incremented : 

![db_challenger drawio (2)](https://user-images.githubusercontent.com/72777496/156594208-4b6ca042-0ac7-409e-9759-de3f58cadda1.png)

---------------------------------------------------------------------API Documentation-------------------------------------------------------------------------------------------

And also you can check the full API documentation on the link below : 

https://documenter.getpostman.com/view/17535083/UVksMZqq

---------------------------------------------------------------------Code Screenshots--------------------------------------------------------------------------------------------

To keep things short and simple, I will only post screenshots of syntaxes that is required for the Tymon JWT, since Tymon is an external dependency that Laravel doesn't provide by itself.

Here are the screenshots : 

1.) app\Http\Middleware\JwtMiddleware.php

this file is very crucial to access the api, since the authorization must go through this middleware, and it contains 3 conditions to check the most common errors regarding JWT.

![ss1](https://user-images.githubusercontent.com/72777496/156597889-26f82731-97a4-4a1b-a14b-902064e0c6e3.png)

2.) app\Http\Kernel.php

added jwt.verify inside the $routeMiddleware array so we can use it for routing the api's with authorization.

![ss2](https://user-images.githubusercontent.com/72777496/156599186-6e35adba-6ea7-4715-a932-9366c5f9d2a3.png)

3.) added 2 functions to identify the token that the subject have inside app/Models/User.php

![ss3](https://user-images.githubusercontent.com/72777496/156600848-e582dbdb-88b3-4246-9e1e-82362bc4aeba.png)

4.) All the functions that's added inside app/Http/Controllers/UserController.php

-> a.) Login 

![ss4](https://user-images.githubusercontent.com/72777496/156602217-87b751d1-1c49-467a-a6bc-3eba2dca572d.png)

-> b.) Register

![ss5](https://user-images.githubusercontent.com/72777496/156602572-aadcb1cd-31df-4611-9b3c-de1970b120d5.png)

-> c.) getAuthenticatedUser

![ss6](https://user-images.githubusercontent.com/72777496/156602670-46d635e9-a055-42b1-9156-9b84b3777e2b.png)

5.) new aliases that is added inside config/app.php

![ss7](https://user-images.githubusercontent.com/72777496/156603137-41161530-eae0-4507-92a1-0325c44e9285.png)






    


