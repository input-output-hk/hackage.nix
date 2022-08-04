{
  "0.1" = {
    sha256 = "19620782a25e354c032f9e9afc125ed30c70fea466fb9745b2374588292a2a83";
    revisions = {
      r0 = {
        nix = import ../hackage/rattle-0.1-r0-6363e24fab02bd21df22cb2aadc69a884d637ee5491d958458fb87aaadd6bfa9.nix;
        revNum = 0;
        sha256 = "6363e24fab02bd21df22cb2aadc69a884d637ee5491d958458fb87aaadd6bfa9";
        };
      r1 = {
        nix = import ../hackage/rattle-0.1-r1-9ce94472a49b72cee4cb7b19d437b14c610efcdea7cf53a079972c24688af4de.nix;
        revNum = 1;
        sha256 = "9ce94472a49b72cee4cb7b19d437b14c610efcdea7cf53a079972c24688af4de";
        };
      r2 = {
        nix = import ../hackage/rattle-0.1-r2-8903d57256223eb8a84786802c9469f4cf6aad7680288a756d72941d41af6740.nix;
        revNum = 2;
        sha256 = "8903d57256223eb8a84786802c9469f4cf6aad7680288a756d72941d41af6740";
        };
      default = "r2";
      };
    };
  "0.2" = {
    sha256 = "73ad0180c04fda1427b9625e1aa969c6670fb79aa0899a0b520e0dd1a29da3d9";
    revisions = {
      r0 = {
        nix = import ../hackage/rattle-0.2-r0-0781d002c9c431e3d4b68b8f48dbd9a7727cea707aa11d2addffad6a216004b3.nix;
        revNum = 0;
        sha256 = "0781d002c9c431e3d4b68b8f48dbd9a7727cea707aa11d2addffad6a216004b3";
        };
      default = "r0";
      };
    };
  }