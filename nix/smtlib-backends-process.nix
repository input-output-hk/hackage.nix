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
  }