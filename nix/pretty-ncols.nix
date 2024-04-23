{
  "0.1" = {
    sha256 = "58b9f368a13fd226f29b56aaa715ac7945aebfaca9a21f96412fc92c1f476d2f";
    revisions = {
      r0 = {
        nix = import ../hackage/pretty-ncols-0.1-r0-b89b65b9cc8b9ef1906a93763681fa97ed50e86570b00428e9e00a5375583fbc.nix;
        revNum = 0;
        sha256 = "b89b65b9cc8b9ef1906a93763681fa97ed50e86570b00428e9e00a5375583fbc";
      };
      r1 = {
        nix = import ../hackage/pretty-ncols-0.1-r1-d5980200f96bbe29472daa3db5e9380abfd338d6f8f78d195525f2f4f350ed82.nix;
        revNum = 1;
        sha256 = "d5980200f96bbe29472daa3db5e9380abfd338d6f8f78d195525f2f4f350ed82";
      };
      default = "r1";
    };
  };
}