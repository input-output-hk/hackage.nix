{
  "0.1.0.0" = {
    sha256 = "8a2ba3f88deb5e896995570179552c1bc28854cbaa7f88358a6334893993201d";
    revisions = {
      r0 = {
        nix = import ../hackage/MIP-0.1.0.0-r0-c40d7210ba6861eb569786e4f953365617d2e806f004b99fc27b275f3d0a5f83.nix;
        revNum = 0;
        sha256 = "c40d7210ba6861eb569786e4f953365617d2e806f004b99fc27b275f3d0a5f83";
        };
      r1 = {
        nix = import ../hackage/MIP-0.1.0.0-r1-cd669e92c2a7b3d939d664e6506d53cab807c8fbead6ec9704362d3feb5cdd9a.nix;
        revNum = 1;
        sha256 = "cd669e92c2a7b3d939d664e6506d53cab807c8fbead6ec9704362d3feb5cdd9a";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "80501da2babf2e02940d3cc0945df2ce4e267a6f59bbde2f4c32be0fc1e3ff0d";
    revisions = {
      r0 = {
        nix = import ../hackage/MIP-0.1.1.0-r0-009b2c0536e2c704485c57e67a7a8e0f62b251fd8644c3a45dd05f888893dde5.nix;
        revNum = 0;
        sha256 = "009b2c0536e2c704485c57e67a7a8e0f62b251fd8644c3a45dd05f888893dde5";
        };
      r1 = {
        nix = import ../hackage/MIP-0.1.1.0-r1-01bbc71cbeabb76c8e23a68e351ff1f73cfb841ba105114d34666849de79a24a.nix;
        revNum = 1;
        sha256 = "01bbc71cbeabb76c8e23a68e351ff1f73cfb841ba105114d34666849de79a24a";
        };
      default = "r1";
      };
    };
  }