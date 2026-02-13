{
  "0.1.0.0" = {
    sha256 = "c17a28abb279bf4802543f089d903a43501f9606b3c144db044996f3020c1375";
    revisions = {
      r0 = {
        nix = import ../hackage/glean-0.1.0.0-r0-df01fe9ae37fbf7d192b670f3eadc54ebb16b8eb6b34bb177ac0c8339ce5b715.nix;
        revNum = 0;
        sha256 = "df01fe9ae37fbf7d192b670f3eadc54ebb16b8eb6b34bb177ac0c8339ce5b715";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "2ae4433df19666328be5ee1bf1ecf17bdf1f03b976ebf46a60c463f79bdacb38";
    revisions = {
      r0 = {
        nix = import ../hackage/glean-0.2.0.0-r0-c29487ab888ab53ee280f5f9d2f1b34a8afaa0b669fa5113a608ace192846e24.nix;
        revNum = 0;
        sha256 = "c29487ab888ab53ee280f5f9d2f1b34a8afaa0b669fa5113a608ace192846e24";
      };
      default = "r0";
    };
  };
}