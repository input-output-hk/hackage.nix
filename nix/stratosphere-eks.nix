{
  "1.0.0" = {
    sha256 = "9fde3864259fdb9dd6fb00faeab8a7dc82ca7545417a41fe9f62339db7108780";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-eks-1.0.0-r0-aed55200ee159fb24d5e171400a2dcdf734190233822c5d66e11648fb25d4709.nix;
        revNum = 0;
        sha256 = "aed55200ee159fb24d5e171400a2dcdf734190233822c5d66e11648fb25d4709";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "d1c9e146a79fea05f08e03566c8e056bc39873bbd7330772f8d21343d5d9bd3f";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-eks-1.0.1-r0-06500746dbeff0ea7a467c395f4693f46a3a27b4a6b8a51ee9f09e3f7a159d1a.nix;
        revNum = 0;
        sha256 = "06500746dbeff0ea7a467c395f4693f46a3a27b4a6b8a51ee9f09e3f7a159d1a";
      };
      default = "r0";
    };
  };
}