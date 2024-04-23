{
  "0.1.0.0" = {
    sha256 = "d5551c4581f9fe2ba1387b6adb2d81f77bfc0302e4d7d95c4e728b4f975c6480";
    revisions = {
      r0 = {
        nix = import ../hackage/numericpeano-0.1.0.0-r0-da7ffba6d0752eee788bd89a67e693f2240a9e988033647d49db06dfe6431090.nix;
        revNum = 0;
        sha256 = "da7ffba6d0752eee788bd89a67e693f2240a9e988033647d49db06dfe6431090";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "3b0576c3dee798440dd878390027b2c3864d80c0b99ef5b3ea287ede26ca2ab9";
    revisions = {
      r0 = {
        nix = import ../hackage/numericpeano-0.2.0.0-r0-e3a1dc960817a81f39d276e7bfa0124e8efa1b91b5c272a70dfa16c38627f172.nix;
        revNum = 0;
        sha256 = "e3a1dc960817a81f39d276e7bfa0124e8efa1b91b5c272a70dfa16c38627f172";
      };
      default = "r0";
    };
  };
}