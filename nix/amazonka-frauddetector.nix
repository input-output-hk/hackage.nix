{
  "2.0" = {
    sha256 = "3afc902e9eacb2f592de18e306c131d61e597890cb2ab7a2773e31f41559fa54";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-frauddetector-2.0-r0-a3508b55796ce3f4328d8ad801d58f0bcb452be233a1adc3c63983fa00532fb1.nix;
        revNum = 0;
        sha256 = "a3508b55796ce3f4328d8ad801d58f0bcb452be233a1adc3c63983fa00532fb1";
      };
      r1 = {
        nix = import ../hackage/amazonka-frauddetector-2.0-r1-4b38f515c6b07ac0b5bc541de0e30f52c567ecab566956a9559f8627e9ffcd50.nix;
        revNum = 1;
        sha256 = "4b38f515c6b07ac0b5bc541de0e30f52c567ecab566956a9559f8627e9ffcd50";
      };
      default = "r1";
    };
  };
}