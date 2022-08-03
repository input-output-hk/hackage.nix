{
  "0.1.0.0" = {
    sha256 = "ab2229956affad390c420d267c95a2987894c1c855ac4759254b3ded63db449c";
    revisions = {
      r0 = {
        nix = import ../hackage/testloop-0.1.0.0-r0-03c13dc58304b20ad177d8732b86f8ecac84d39d28d623b8b1d48bdef1c8ae0c.nix;
        revNum = 0;
        sha256 = "03c13dc58304b20ad177d8732b86f8ecac84d39d28d623b8b1d48bdef1c8ae0c";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "8a600cd5a7424d174f13a991c4e182f1f6f908d9b90ff73de2c9b2832b32ade3";
    revisions = {
      r0 = {
        nix = import ../hackage/testloop-0.1.0.1-r0-0e5aafd36238b8b4aed81503810ee3b221c80922992d0872ad07488cf7eae777.nix;
        revNum = 0;
        sha256 = "0e5aafd36238b8b4aed81503810ee3b221c80922992d0872ad07488cf7eae777";
        };
      default = "r0";
      };
    };
  "0.1.0.2" = {
    sha256 = "4eb944999c2d3f14b77c3e438142a3c6de4f7585706233ea02a40fe340b689a5";
    revisions = {
      r0 = {
        nix = import ../hackage/testloop-0.1.0.2-r0-139305442fc46df6d3b5897a3476c1b442c4049713ab3fabdcd4114dcb58bfbd.nix;
        revNum = 0;
        sha256 = "139305442fc46df6d3b5897a3476c1b442c4049713ab3fabdcd4114dcb58bfbd";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "ffac18cca070139638a85d7b83a5d0237726b49e9f8ceba104c683665973cfaf";
    revisions = {
      r0 = {
        nix = import ../hackage/testloop-0.1.1.0-r0-b693ab7801b694a46c2ffb794f0bcb0a890626a101130487b3007d7e4a46414d.nix;
        revNum = 0;
        sha256 = "b693ab7801b694a46c2ffb794f0bcb0a890626a101130487b3007d7e4a46414d";
        };
      r1 = {
        nix = import ../hackage/testloop-0.1.1.0-r1-abe623a1ffc831ad920918b9737e4a2c93966ea6f699edc3472a71c6dcd1300c.nix;
        revNum = 1;
        sha256 = "abe623a1ffc831ad920918b9737e4a2c93966ea6f699edc3472a71c6dcd1300c";
        };
      r2 = {
        nix = import ../hackage/testloop-0.1.1.0-r2-cbf63f33f18f023e56798ab7f354db64fff71eba3209deb411f5ae3cfb252a9e.nix;
        revNum = 2;
        sha256 = "cbf63f33f18f023e56798ab7f354db64fff71eba3209deb411f5ae3cfb252a9e";
        };
      default = "r2";
      };
    };
  }