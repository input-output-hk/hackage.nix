{
  "0.1.0.0" = {
    sha256 = "0ecae78e62defb73593938a8610c8604f85de768c7f663a9684a3971da11f51b";
    revisions = {
      r0 = {
        nix = import ../hackage/template-haskell-quasiquoter-0.1.0.0-r0-96392d942dcef3d32b60995abf59416ed7e53e9f9f72de50d4e802c8a6e79a6c.nix;
        revNum = 0;
        sha256 = "96392d942dcef3d32b60995abf59416ed7e53e9f9f72de50d4e802c8a6e79a6c";
      };
      r1 = {
        nix = import ../hackage/template-haskell-quasiquoter-0.1.0.0-r1-71027c432c0fb1a293d0f2b1d46dd5be42b9703b7c4b2233ea8076bfc6f84aae.nix;
        revNum = 1;
        sha256 = "71027c432c0fb1a293d0f2b1d46dd5be42b9703b7c4b2233ea8076bfc6f84aae";
      };
      default = "r1";
    };
  };
}