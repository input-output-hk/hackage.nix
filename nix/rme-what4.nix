{
  "0.1" = {
    sha256 = "0781b774381bd0b46d01f94a01358435032a0be099d39146ed1e680b78f3ecd9";
    revisions = {
      r0 = {
        nix = import ../hackage/rme-what4-0.1-r0-49572468bc50101304bda83223ddd19512cd053c962deff022510c758a002015.nix;
        revNum = 0;
        sha256 = "49572468bc50101304bda83223ddd19512cd053c962deff022510c758a002015";
      };
      r1 = {
        nix = import ../hackage/rme-what4-0.1-r1-3f1fd77d63e1ca1b9719525720dde4a24c9dc1ccae5e6e72bf30558418b984a6.nix;
        revNum = 1;
        sha256 = "3f1fd77d63e1ca1b9719525720dde4a24c9dc1ccae5e6e72bf30558418b984a6";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "cec36e13dc80a858b611db6728e269898b200ac8d4e80d2f66684a584c8ba65f";
    revisions = {
      r0 = {
        nix = import ../hackage/rme-what4-0.1.1-r0-552253c5801688244745d00376cb79b08f1dd8760ac2381992b1f2f6399126ee.nix;
        revNum = 0;
        sha256 = "552253c5801688244745d00376cb79b08f1dd8760ac2381992b1f2f6399126ee";
      };
      default = "r0";
    };
  };
  "0.1.2" = {
    sha256 = "9239c303e77b7b901d6a0ee160c45fa7028d777df265446c5c2fd4eda083d0fd";
    revisions = {
      r0 = {
        nix = import ../hackage/rme-what4-0.1.2-r0-9d6a996f38cae3785fe942d8f7887ef5979a73bd9c32517932ae329d7822fd96.nix;
        revNum = 0;
        sha256 = "9d6a996f38cae3785fe942d8f7887ef5979a73bd9c32517932ae329d7822fd96";
      };
      default = "r0";
    };
  };
}