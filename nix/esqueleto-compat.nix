{
  "0.0.2.0" = {
    sha256 = "7343452f70d92771da66baa9961ceba7e8bb6130094c824618add2934a89e664";
    revisions = {
      r0 = {
        nix = import ../hackage/esqueleto-compat-0.0.2.0-r0-3af0dea729342baa343670f544938d9b6f73b33a0249a679a09eaacff48d2161.nix;
        revNum = 0;
        sha256 = "3af0dea729342baa343670f544938d9b6f73b33a0249a679a09eaacff48d2161";
      };
      r1 = {
        nix = import ../hackage/esqueleto-compat-0.0.2.0-r1-37f72607a805c32e8fb83ed7713cd41ddbbe5299685451c4ad496aefc33c102f.nix;
        revNum = 1;
        sha256 = "37f72607a805c32e8fb83ed7713cd41ddbbe5299685451c4ad496aefc33c102f";
      };
      r2 = {
        nix = import ../hackage/esqueleto-compat-0.0.2.0-r2-32f3858676ab570711e271c126beca0fd2dff42a7e99e3443d78a3bce9a8ca96.nix;
        revNum = 2;
        sha256 = "32f3858676ab570711e271c126beca0fd2dff42a7e99e3443d78a3bce9a8ca96";
      };
      default = "r2";
    };
  };
}