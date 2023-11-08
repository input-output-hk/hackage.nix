{
  "3.10.1.0" = {
    sha256 = "2c0d9edd4ccd746e9bf8ab4f92b1ecffe2f56eae29395c67ef5ca091a6f49f37";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-install-solver-3.10.1.0-r0-0aab4a5f8e0de52b1670f1116b4bb63c7958a8fa6740353480aa70144a232ebf.nix;
        revNum = 0;
        sha256 = "0aab4a5f8e0de52b1670f1116b4bb63c7958a8fa6740353480aa70144a232ebf";
        };
      r1 = {
        nix = import ../hackage/cabal-install-solver-3.10.1.0-r1-8dec767ddf37f712fede6e0f0a3a99a12a1b7313ed3da677615d54b0a38278d0.nix;
        revNum = 1;
        sha256 = "8dec767ddf37f712fede6e0f0a3a99a12a1b7313ed3da677615d54b0a38278d0";
        };
      default = "r1";
      };
    };
  "3.10.2.1" = {
    sha256 = "91d00728bc4b097da34a7a177a04a4b8eb38c5ae734458346484c432dea5d40a";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-install-solver-3.10.2.1-r0-7b9c651e0c44ab03176f1b6fcf2debe886405cc543213db85a6d4e5dfda44835.nix;
        revNum = 0;
        sha256 = "7b9c651e0c44ab03176f1b6fcf2debe886405cc543213db85a6d4e5dfda44835";
        };
      default = "r0";
      };
    };
  "3.8.1.0" = {
    sha256 = "df2369f6c37517a3b2625bc19057d9e206bbb40386bcb607f17dc7d2e588ffe7";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-install-solver-3.8.1.0-r0-9ce6e9ab0236192251343ddbe584b4db2a2dfef2930a3e5511af3746fe6483dc.nix;
        revNum = 0;
        sha256 = "9ce6e9ab0236192251343ddbe584b4db2a2dfef2930a3e5511af3746fe6483dc";
        };
      r1 = {
        nix = import ../hackage/cabal-install-solver-3.8.1.0-r1-95f75217c3f6f7231576d73dd9275303f271360a0a2a0f02bb03c80b843c88bc.nix;
        revNum = 1;
        sha256 = "95f75217c3f6f7231576d73dd9275303f271360a0a2a0f02bb03c80b843c88bc";
        };
      default = "r1";
      };
    };
  }