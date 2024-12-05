{
  "0.1.0" = {
    sha256 = "f4221e4152e453fd913b2556b5b371e7bbe209274af822e9b2df06b7a46d2339";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-releases-0.1.0-r0-6da418c5e8222a14cdcc7af10ad71d9a05661440550f3f896dd962d21f1b2ecf.nix;
        revNum = 0;
        sha256 = "6da418c5e8222a14cdcc7af10ad71d9a05661440550f3f896dd962d21f1b2ecf";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "32c449c63b296ac8c6fac0bba3660dab7d97c7d5cdd9ae48f3e15ebdf26313de";
    revisions = {
      r0 = {
        nix = import ../hackage/fedora-releases-0.2.0-r0-a4abd965642628d5732a73f195fe232b25b75f55e1e8b36f8578dcefa4bb99d6.nix;
        revNum = 0;
        sha256 = "a4abd965642628d5732a73f195fe232b25b75f55e1e8b36f8578dcefa4bb99d6";
      };
      default = "r0";
    };
  };
}