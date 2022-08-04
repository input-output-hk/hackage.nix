{
  "0.0.0.0" = {
    sha256 = "ed8ef99b49c021af2afb0de34e194e46ddce2a4863fa51cfa8551b7c62b424ed";
    revisions = {
      r0 = {
        nix = import ../hackage/graph-0.0.0.0-r0-8cea51075b9daf3ec2d19f4540a9ff5e5c3028885daec23685303d60215b1642.nix;
        revNum = 0;
        sha256 = "8cea51075b9daf3ec2d19f4540a9ff5e5c3028885daec23685303d60215b1642";
        };
      r1 = {
        nix = import ../hackage/graph-0.0.0.0-r1-896c932df46201bd9777282a37e8ad544a8b682379f342b776d4ccf16dd34846.nix;
        revNum = 1;
        sha256 = "896c932df46201bd9777282a37e8ad544a8b682379f342b776d4ccf16dd34846";
        };
      default = "r1";
      };
    };
  }