{
  "0.0.0" = {
    sha256 = "a6a8e82283db878201235e38ed1f447768bb762ed4764c9c51b126fe9fad7931";
    revisions = {
      r0 = {
        nix = import ../hackage/fixie-0.0.0-r0-f0371dbacf29e9f0d7deca7d9945e65decaac0829b5999cc8b47eee6b188b06a.nix;
        revNum = 0;
        sha256 = "f0371dbacf29e9f0d7deca7d9945e65decaac0829b5999cc8b47eee6b188b06a";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "b016c231a391816d4dca407f06e64b87d1c29b55fddcae9e0fc28df942bc4f6d";
    revisions = {
      r0 = {
        nix = import ../hackage/fixie-1.0.0-r0-e078895742170485987b6581c6b290960ef79fd73cf1372079d804ef241b0e03.nix;
        revNum = 0;
        sha256 = "e078895742170485987b6581c6b290960ef79fd73cf1372079d804ef241b0e03";
      };
      default = "r0";
    };
  };
}