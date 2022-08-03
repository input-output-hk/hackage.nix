{
  "0.1" = {
    sha256 = "b9d6e92eebe5a1d4043dcde564f646cf474fe20de251f3352589af92b37f9799";
    revisions = {
      r0 = {
        nix = import ../hackage/crockford-0.1-r0-1a9465391f6e0ebc320b3a9de597e47dae5852faac5f45523671b529b70e320a.nix;
        revNum = 0;
        sha256 = "1a9465391f6e0ebc320b3a9de597e47dae5852faac5f45523671b529b70e320a";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "463c5dbde6612479eae43915baa3501804520c4bd880fdc63a326c3085abfab9";
    revisions = {
      r0 = {
        nix = import ../hackage/crockford-0.2-r0-6ec593711a20bd4b81a0fc13f3d850d2d890690941d777230fbf980c483e434a.nix;
        revNum = 0;
        sha256 = "6ec593711a20bd4b81a0fc13f3d850d2d890690941d777230fbf980c483e434a";
        };
      default = "r0";
      };
    };
  }