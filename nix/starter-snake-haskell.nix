{
  "1.0.0" = {
    sha256 = "a97a6b27913323e2b661573622ce78a16c2c4efa41208d77a8fae7fe3cefe387";
    revisions = {
      r0 = {
        nix = import ../hackage/starter-snake-haskell-1.0.0-r0-4515c3e809132974732f58e2bec462e0180bb3b24a2a1baa7cacb9a062cd713d.nix;
        revNum = 0;
        sha256 = "4515c3e809132974732f58e2bec462e0180bb3b24a2a1baa7cacb9a062cd713d";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "c7d9bedd29558b879b2a8e0f57b3c34ee4f54e429833f7bc8ff7a543e722538b";
    revisions = {
      r0 = {
        nix = import ../hackage/starter-snake-haskell-1.1.0-r0-171a5ce3d2ab7b2207f5a8fc764d3f0887eb6593d3b9e1116f32d534397d6778.nix;
        revNum = 0;
        sha256 = "171a5ce3d2ab7b2207f5a8fc764d3f0887eb6593d3b9e1116f32d534397d6778";
      };
      default = "r0";
    };
  };
}