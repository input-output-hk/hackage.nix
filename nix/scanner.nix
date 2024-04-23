{
  "0.1" = {
    sha256 = "4e90fbba9df18c28fba77e850d7e4dc2b705ae01081370bcbd82cdadb805c866";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-0.1-r0-3772a3db80c10b26627ac4e7e5b37eae87b8427264fe04123695a47ca6740276.nix;
        revNum = 0;
        sha256 = "3772a3db80c10b26627ac4e7e5b37eae87b8427264fe04123695a47ca6740276";
      };
      r1 = {
        nix = import ../hackage/scanner-0.1-r1-f934304f7580b8ff8ee2ae62d2b669d48df18551e9c93c5656bdf5f688dae85c.nix;
        revNum = 1;
        sha256 = "f934304f7580b8ff8ee2ae62d2b669d48df18551e9c93c5656bdf5f688dae85c";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "3a020d68a0372a5211c72e55eeb299738ea608d17184bc68f74d31ebe667a5e9";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-0.2-r0-2ac8ce1bbd865a1b89e56f3ab492520f17efd3f1db0de32ead9f0c1baca09eda.nix;
        revNum = 0;
        sha256 = "2ac8ce1bbd865a1b89e56f3ab492520f17efd3f1db0de32ead9f0c1baca09eda";
      };
      r1 = {
        nix = import ../hackage/scanner-0.2-r1-07b7bd2779b9e09b6af2685e2485ce4b659af1c059f7398463a10f2254d4c7d5.nix;
        revNum = 1;
        sha256 = "07b7bd2779b9e09b6af2685e2485ce4b659af1c059f7398463a10f2254d4c7d5";
      };
      default = "r1";
    };
  };
  "0.3" = {
    sha256 = "a7f85147b59e443dbd986c1f880a0c3ab0190ba7b27c2ce6238da07397fd507b";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-0.3-r0-6aaf7e9a247ba1e7dad0a191ae82cfbdc61e6be727419aeb765f08196c3cc32f.nix;
        revNum = 0;
        sha256 = "6aaf7e9a247ba1e7dad0a191ae82cfbdc61e6be727419aeb765f08196c3cc32f";
      };
      r1 = {
        nix = import ../hackage/scanner-0.3-r1-a2ff7be4bc0dbb6b7b043db6874087a8b53b29d2600514bdd83782636599c4ec.nix;
        revNum = 1;
        sha256 = "a2ff7be4bc0dbb6b7b043db6874087a8b53b29d2600514bdd83782636599c4ec";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "53205f5a7dcb7a0547c9394ddb28a6eeb181627f006b875bfc08a88c498218d6";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-0.3.1-r0-6b90f2e4ff01895b69cc53885550b85a0536a702b90947ade4ac34d6435ce5a8.nix;
        revNum = 0;
        sha256 = "6b90f2e4ff01895b69cc53885550b85a0536a702b90947ade4ac34d6435ce5a8";
      };
      default = "r0";
    };
  };
}