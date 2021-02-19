# Hasher Store

This repo a script to run the hasher-store system. It is composed of three separate projects:

- product-service
- discount-service
- proto-graal

Before starting, make sure you've meet the requirements described in each project listed above.
To run hasher-store just type the commands:

```sh
chmod +x ./start-hasher-store
./start-hasher-store
```

The rest server should be up and running on port 3000 and the gRPC server on port 9000.

To stop all containers:

```sh
chmod +x ./stop-hasher-store
./stop-hasher-store
```

Some considerations:

- The proto files are centralized in a single repo and the code generation is done in each project separately.
- Both services include a docker-compose so they can run and be developed independently, but this project includes a script to run the complete system
- Due to the challenge requirements, specially regarding the gRPC call contract, both `discount-service` and `product-service` will share a single database.
- A Postman collection and environment is included to consume the system.
