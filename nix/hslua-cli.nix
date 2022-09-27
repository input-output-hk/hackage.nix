{
  "1.0.0" = {
    sha256 = "9518b86e9c500a17afceba62ae5d6d3ac07489d3b9696043c71744f3e87362b5";
    revisions = {
      r0 = {
        nix = import ../hackage/hslua-cli-1.0.0-r0-def6d274a90a7569bc8b61fcd481fba5280a3612cdaf274e78ff5550cd03bc5a.nix;
        revNum = 0;
        sha256 = "def6d274a90a7569bc8b61fcd481fba5280a3612cdaf274e78ff5550cd03bc5a";
        };
      default = "r0";
      };
    };
  "1.1.0" = {
    sha256 = "6aded2948c83ddcc2f4e3d27e7737d2b0909515ea155c5baa096b258ddb98abc";
    revisions = {
      r0 = {
        nix = import ../hackage/hslua-cli-1.1.0-r0-f8768032f94f962bffd70052217827b68081fe95e2d59ed248839d85ddbada4d.nix;
        revNum = 0;
        sha256 = "f8768032f94f962bffd70052217827b68081fe95e2d59ed248839d85ddbada4d";
        };
      default = "r0";
      };
    };
  }