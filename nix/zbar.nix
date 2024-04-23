{
  "0.1.0.0" = {
    sha256 = "c1255a94c2b6ed9b3f354298a92acd398b8d2fc08eadc756ed3a5f2a49df7e19";
    revisions = {
      r0 = {
        nix = import ../hackage/zbar-0.1.0.0-r0-d55c3fe7c73e87690e6459751aeb14a3c1ff8ae719776a4331b57ed1522ba8ed.nix;
        revNum = 0;
        sha256 = "d55c3fe7c73e87690e6459751aeb14a3c1ff8ae719776a4331b57ed1522ba8ed";
      };
      r1 = {
        nix = import ../hackage/zbar-0.1.0.0-r1-07e5a31f7c7864eadac8f8778cc58b4d93f980beee4c5d433628b681526a8079.nix;
        revNum = 1;
        sha256 = "07e5a31f7c7864eadac8f8778cc58b4d93f980beee4c5d433628b681526a8079";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "bf38594db22bd28f3200cb82e74718bb7cc0f92d255aeb7d06b80487bb0fa80d";
    revisions = {
      r0 = {
        nix = import ../hackage/zbar-0.1.1.0-r0-77b17ff95500736457ffee0b568064c945162ce5629a1c3a28f72d55500fccd4.nix;
        revNum = 0;
        sha256 = "77b17ff95500736457ffee0b568064c945162ce5629a1c3a28f72d55500fccd4";
      };
      r1 = {
        nix = import ../hackage/zbar-0.1.1.0-r1-62bbddac8fa7180b15689063355e1f6c4c886b3e2af69ef9fa5e53cdfc628e6a.nix;
        revNum = 1;
        sha256 = "62bbddac8fa7180b15689063355e1f6c4c886b3e2af69ef9fa5e53cdfc628e6a";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "89df47de5eb35aed65ff9026d16b13fdcdc5b236595f5899233feeaf9a373ac1";
    revisions = {
      r0 = {
        nix = import ../hackage/zbar-0.2.0.0-r0-d9dac542818fa426a84f236730f996b7511da3fff1294b14e3cb8718f71f309f.nix;
        revNum = 0;
        sha256 = "d9dac542818fa426a84f236730f996b7511da3fff1294b14e3cb8718f71f309f";
      };
      default = "r0";
    };
  };
}