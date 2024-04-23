{
  "0.10" = {
    sha256 = "e7c5731e7575f8d5f1a29631914e8e62ba203b77a78459a47603ab0716d8d034";
    revisions = {
      r0 = {
        nix = import ../hackage/unamb-custom-0.10-r0-223a26106ef5eaa3c60785b77a7b84d98eba27268c6c679b939362050f82312f.nix;
        revNum = 0;
        sha256 = "223a26106ef5eaa3c60785b77a7b84d98eba27268c6c679b939362050f82312f";
      };
      default = "r0";
    };
  };
  "0.12" = {
    sha256 = "cdfa0206b94b0545420426d31c0016eead34f87ef0bf3ea7b5a2970f2ccbaf59";
    revisions = {
      r0 = {
        nix = import ../hackage/unamb-custom-0.12-r0-f5ed022c1babf6c2d1737bd56fe74cdfbf49bc9ad382cff572ebe7672f5069b8.nix;
        revNum = 0;
        sha256 = "f5ed022c1babf6c2d1737bd56fe74cdfbf49bc9ad382cff572ebe7672f5069b8";
      };
      default = "r0";
    };
  };
  "0.13" = {
    sha256 = "934bbcb36d12d2d2ea5d490711681a659b5b55d97e0acad9cb0bbd9e2227c964";
    revisions = {
      r0 = {
        nix = import ../hackage/unamb-custom-0.13-r0-756b3ffd5167083bce511e8920ba3caafbf070641ded31957f87db88a3470f3f.nix;
        revNum = 0;
        sha256 = "756b3ffd5167083bce511e8920ba3caafbf070641ded31957f87db88a3470f3f";
      };
      default = "r0";
    };
  };
}