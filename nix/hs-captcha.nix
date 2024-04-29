{
  "1.0" = {
    sha256 = "c8eab698e6e32221b2f77c99f823fe9ee4b636ae115da0bb0ca05a14e93cad09";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-captcha-1.0-r0-ee0884024305db1d42aaa8bbca1508532e9e4912a4e34a1d8ea59bb34d407682.nix;
        revNum = 0;
        sha256 = "ee0884024305db1d42aaa8bbca1508532e9e4912a4e34a1d8ea59bb34d407682";
      };
      r1 = {
        nix = import ../hackage/hs-captcha-1.0-r1-4656a80709e3cac0e747e285e5c39ece48ca7656504722ea54f0a9aefd5de190.nix;
        revNum = 1;
        sha256 = "4656a80709e3cac0e747e285e5c39ece48ca7656504722ea54f0a9aefd5de190";
      };
      default = "r1";
    };
  };
}