{
  "0.1.0.0" = {
    sha256 = "d65bacd75edd3a5c90035d75460bbc02e105befd9f431e60722f8fcb5dc53c90";
    revisions = {
      r0 = {
        nix = import ../hackage/ClasshSS-0.1.0.0-r0-d470937ee73f037236e133195f3236f018b57d6f299ebbf1605732e868511e2a.nix;
        revNum = 0;
        sha256 = "d470937ee73f037236e133195f3236f018b57d6f299ebbf1605732e868511e2a";
      };
      r1 = {
        nix = import ../hackage/ClasshSS-0.1.0.0-r1-5387a5777e6fd07e1fa9cc3b4cdbf5660641c87a12376253f7f60b2603296b04.nix;
        revNum = 1;
        sha256 = "5387a5777e6fd07e1fa9cc3b4cdbf5660641c87a12376253f7f60b2603296b04";
      };
      r2 = {
        nix = import ../hackage/ClasshSS-0.1.0.0-r2-4b276bf74bc49f982b609e2d18c9695c05bf3bcdc94cb7b00b0c7a3b1db7134d.nix;
        revNum = 2;
        sha256 = "4b276bf74bc49f982b609e2d18c9695c05bf3bcdc94cb7b00b0c7a3b1db7134d";
      };
      default = "r2";
    };
  };
  "0.2.0.0" = {
    sha256 = "8b8697acc144aaf98e808d517c1a298562f355ed4761ee3a9958aaf28d685cec";
    revisions = {
      r0 = {
        nix = import ../hackage/ClasshSS-0.2.0.0-r0-4992f873bf257cc0686c78c4c2694e59edb1f42bbd7d26e9f976ea59452d1f4c.nix;
        revNum = 0;
        sha256 = "4992f873bf257cc0686c78c4c2694e59edb1f42bbd7d26e9f976ea59452d1f4c";
      };
      default = "r0";
    };
  };
}