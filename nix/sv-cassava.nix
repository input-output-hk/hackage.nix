{
  "0.1" = {
    sha256 = "25d8eace172492feee0682cefc656c407482db92c61a53b1bc3ac25fa2140e14";
    revisions = {
      r0 = {
        nix = import ../hackage/sv-cassava-0.1-r0-779bac9c43b6d1124238bb7881ffc20692ac6596a4cf9a337b6363b3cfecef82.nix;
        revNum = 0;
        sha256 = "779bac9c43b6d1124238bb7881ffc20692ac6596a4cf9a337b6363b3cfecef82";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "367e03907c52ac414de0552fb367065754066358f782e5467d4bbf82d6807005";
    revisions = {
      r0 = {
        nix = import ../hackage/sv-cassava-0.2-r0-cd93a4353f4b9b40ac0b69e35edf5826b03e36516027b635e710a92e56be7cba.nix;
        revNum = 0;
        sha256 = "cd93a4353f4b9b40ac0b69e35edf5826b03e36516027b635e710a92e56be7cba";
        };
      r1 = {
        nix = import ../hackage/sv-cassava-0.2-r1-5dee1eec15aef456dcf582194368a77799b16f3c6fa057d3cbfa67a21fe856d5.nix;
        revNum = 1;
        sha256 = "5dee1eec15aef456dcf582194368a77799b16f3c6fa057d3cbfa67a21fe856d5";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "2b1c5725aa13dfed861b975ca359bd0a8186928b098ee35dc94f97792e539cb0";
    revisions = {
      r0 = {
        nix = import ../hackage/sv-cassava-0.3-r0-65b40950355c5eea0f8e1a4275ddd84ad14ff8ca266edaf69831681cb947d8af.nix;
        revNum = 0;
        sha256 = "65b40950355c5eea0f8e1a4275ddd84ad14ff8ca266edaf69831681cb947d8af";
        };
      r1 = {
        nix = import ../hackage/sv-cassava-0.3-r1-e131ab8b49595bd88b6da85c030349ffa003be713f474fd8818d4993046dae07.nix;
        revNum = 1;
        sha256 = "e131ab8b49595bd88b6da85c030349ffa003be713f474fd8818d4993046dae07";
        };
      r2 = {
        nix = import ../hackage/sv-cassava-0.3-r2-ab9b34f3d594aa916e06da17a515e06aed3822362bba8b254084945c02b2f991.nix;
        revNum = 2;
        sha256 = "ab9b34f3d594aa916e06da17a515e06aed3822362bba8b254084945c02b2f991";
        };
      r3 = {
        nix = import ../hackage/sv-cassava-0.3-r3-0b4e7e78ed02f79c2731b3c225c5d9dd19df3e469b82bf044198d29cac26818c.nix;
        revNum = 3;
        sha256 = "0b4e7e78ed02f79c2731b3c225c5d9dd19df3e469b82bf044198d29cac26818c";
        };
      default = "r3";
      };
    };
  }