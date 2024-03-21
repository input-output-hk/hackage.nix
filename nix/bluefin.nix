{
  "0.0.0.0" = {
    sha256 = "b8c3ad517e04a62f8d5a93c206f209143b7574e5e737bc6f75c496d012bcedd8";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-0.0.0.0-r0-2990fbb34419cca94ab46aad1a5e686df2384ab0c81a433cd8c035b384eec53c.nix;
        revNum = 0;
        sha256 = "2990fbb34419cca94ab46aad1a5e686df2384ab0c81a433cd8c035b384eec53c";
        };
      default = "r0";
      };
    };
  "0.0.1.0" = {
    sha256 = "550ddaf437e457ddb7d0eda21f32d5b91fe5f18052f9da6c68e6f2aca8361160";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-0.0.1.0-r0-fe54d67e085a02d27b8f8606a2ad60bf56dbe8ff1fd2233b6edbbf4779c40b0d.nix;
        revNum = 0;
        sha256 = "fe54d67e085a02d27b8f8606a2ad60bf56dbe8ff1fd2233b6edbbf4779c40b0d";
        };
      r1 = {
        nix = import ../hackage/bluefin-0.0.1.0-r1-7d4ab4248e37987e4f93433bd736623ca14ae3e592550da5163f66e633e95ac5.nix;
        revNum = 1;
        sha256 = "7d4ab4248e37987e4f93433bd736623ca14ae3e592550da5163f66e633e95ac5";
        };
      default = "r1";
      };
    };
  "0.0.2.0" = {
    sha256 = "7e59363c016ac010c30ae5fd146d3325deb44d1f2a98502da0e1d4ce8a0a9a17";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-0.0.2.0-r0-6f4216d63bd28564a1d5c5d4019a672609ffa13222c5edef26f8c1728e25b3b6.nix;
        revNum = 0;
        sha256 = "6f4216d63bd28564a1d5c5d4019a672609ffa13222c5edef26f8c1728e25b3b6";
        };
      r1 = {
        nix = import ../hackage/bluefin-0.0.2.0-r1-0acf1bafac61c86f12519b54954abbbd3e6cbb9b78c6ea970013f3a1ed61f7f0.nix;
        revNum = 1;
        sha256 = "0acf1bafac61c86f12519b54954abbbd3e6cbb9b78c6ea970013f3a1ed61f7f0";
        };
      default = "r1";
      };
    };
  }