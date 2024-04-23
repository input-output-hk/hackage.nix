{
  "0.0.1.0" = {
    sha256 = "dde59212abc383920c5ac5c5a0b5253f4a309d14ebbb21b45310d5b78d922e8a";
    revisions = {
      r0 = {
        nix = import ../hackage/facts-0.0.1.0-r0-a6bc113b6a1b91cd028abab09f9e609c748abc13185b2478ef9d8d1acd58840d.nix;
        revNum = 0;
        sha256 = "a6bc113b6a1b91cd028abab09f9e609c748abc13185b2478ef9d8d1acd58840d";
      };
      r1 = {
        nix = import ../hackage/facts-0.0.1.0-r1-97fe2f20dd9da98b19d42946d9431d9d45ccc2c8836fdacbdce6d348f7b8660f.nix;
        revNum = 1;
        sha256 = "97fe2f20dd9da98b19d42946d9431d9d45ccc2c8836fdacbdce6d348f7b8660f";
      };
      default = "r1";
    };
  };
}