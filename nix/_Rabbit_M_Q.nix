{
  "0.1.0.0" = {
    sha256 = "3a6f7ecfc77656199a7d55f4a4a97511bc984832776fcba80a4942dcbbe63d93";
    revisions = {
      r0 = {
        nix = import ../hackage/RabbitMQ-0.1.0.0-r0-9b373079551b3cb0f1ef1d6419fc5c1da57b8bc882a39af16b2cc5530c538d9c.nix;
        revNum = 0;
        sha256 = "9b373079551b3cb0f1ef1d6419fc5c1da57b8bc882a39af16b2cc5530c538d9c";
        };
      r1 = {
        nix = import ../hackage/RabbitMQ-0.1.0.0-r1-f7e234a3b8809219d45cf5613de2a1153484c27aaed6d65560de06976ca0d79f.nix;
        revNum = 1;
        sha256 = "f7e234a3b8809219d45cf5613de2a1153484c27aaed6d65560de06976ca0d79f";
        };
      r2 = {
        nix = import ../hackage/RabbitMQ-0.1.0.0-r2-d4c848a50f92fe7e4d5aea9a67c92601dff59a5d82886c37c8e22933147cd7d4.nix;
        revNum = 2;
        sha256 = "d4c848a50f92fe7e4d5aea9a67c92601dff59a5d82886c37c8e22933147cd7d4";
        };
      default = "r2";
      };
    };
  }