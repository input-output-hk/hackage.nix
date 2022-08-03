{
  "0.1.0.0" = {
    sha256 = "86677d1b349d2ec5ab8a499c440089de21d86df181acea233fbaba4cf3e9137b";
    revisions = {
      r0 = {
        nix = import ../hackage/monad-ste-0.1.0.0-r0-ba90c3947afe22581440b847347958ecb9a4bfb043a777d3d6ad48414cd68dcf.nix;
        revNum = 0;
        sha256 = "ba90c3947afe22581440b847347958ecb9a4bfb043a777d3d6ad48414cd68dcf";
        };
      r1 = {
        nix = import ../hackage/monad-ste-0.1.0.0-r1-21b61c648574b543ceaa140f04e1f6eb87367c2524331439a65603fb9182ae9f.nix;
        revNum = 1;
        sha256 = "21b61c648574b543ceaa140f04e1f6eb87367c2524331439a65603fb9182ae9f";
        };
      r2 = {
        nix = import ../hackage/monad-ste-0.1.0.0-r2-285b21f98f91b6a4d6014ec6de0e7e8d8efd49ef2b509387d9466017ed708d35.nix;
        revNum = 2;
        sha256 = "285b21f98f91b6a4d6014ec6de0e7e8d8efd49ef2b509387d9466017ed708d35";
        };
      default = "r2";
      };
    };
  }