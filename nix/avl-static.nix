{
  "0.1.0.0" = {
    sha256 = "20b0a9f7a858d980dadc96704709e5e2e1d448dcb17aa53f6064ad7a332f348f";
    revisions = {
      r0 = {
        nix = import ../hackage/avl-static-0.1.0.0-r0-6ebfc8e4e7d93963957e12bdbc62560f2c428cae1483895701b76ac4ec0a215f.nix;
        revNum = 0;
        sha256 = "6ebfc8e4e7d93963957e12bdbc62560f2c428cae1483895701b76ac4ec0a215f";
      };
      r1 = {
        nix = import ../hackage/avl-static-0.1.0.0-r1-f085ba32659494f4786df19a56cc8df717caa0da6fc5e15ddec3c3b44b0d8ee7.nix;
        revNum = 1;
        sha256 = "f085ba32659494f4786df19a56cc8df717caa0da6fc5e15ddec3c3b44b0d8ee7";
      };
      default = "r1";
    };
  };
}