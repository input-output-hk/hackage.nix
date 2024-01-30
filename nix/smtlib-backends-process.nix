{
  "0.2" = {
    sha256 = "ff3b8c9c9bb449523c0a74771e3257656d18b276bb9fc3244fcd03d723e84c86";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-process-0.2-r0-2cbbd28420b2aed11c63ed8e541a80d5ad555447ae186157a39023bc18b15776.nix;
        revNum = 0;
        sha256 = "2cbbd28420b2aed11c63ed8e541a80d5ad555447ae186157a39023bc18b15776";
        };
      r1 = {
        nix = import ../hackage/smtlib-backends-process-0.2-r1-65bb9c83b39266db0155dce6b5a55a0e9c92cb9c97a8ce70775de0fdac551dea.nix;
        revNum = 1;
        sha256 = "65bb9c83b39266db0155dce6b5a55a0e9c92cb9c97a8ce70775de0fdac551dea";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "cf315878de74e98f3d0488360b65b0f7112732da4832a4c0467c943e5c758749";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-process-0.3-r0-d4d7d02859383e0a43db2d8ce7ef01deffe1bcd356b2ff8626925c3a1c8db922.nix;
        revNum = 0;
        sha256 = "d4d7d02859383e0a43db2d8ce7ef01deffe1bcd356b2ff8626925c3a1c8db922";
        };
      r1 = {
        nix = import ../hackage/smtlib-backends-process-0.3-r1-3eee93e91f41c8a2fb2699e95b502a24d8053485ccf7749e2766683d1ebfe11d.nix;
        revNum = 1;
        sha256 = "3eee93e91f41c8a2fb2699e95b502a24d8053485ccf7749e2766683d1ebfe11d";
        };
      r2 = {
        nix = import ../hackage/smtlib-backends-process-0.3-r2-caf131d3d6f6825e3a3182713130a8e14d0bd6530eeda643e8a511b546ff1a26.nix;
        revNum = 2;
        sha256 = "caf131d3d6f6825e3a3182713130a8e14d0bd6530eeda643e8a511b546ff1a26";
        };
      default = "r2";
      };
    };
  }