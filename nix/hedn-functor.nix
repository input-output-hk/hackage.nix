{
  "0.1.0.0" = {
    sha256 = "d1914caa9494501de2d440561f33ba3e93b18fb62cfac8a5c1aec6a9cc5720e9";
    revisions = {
      r0 = {
        nix = import ../hackage/hedn-functor-0.1.0.0-r0-4310955544377060febfac3963a688225c7ee79cdff5818cd600272d4961eed7.nix;
        revNum = 0;
        sha256 = "4310955544377060febfac3963a688225c7ee79cdff5818cd600272d4961eed7";
      };
      r1 = {
        nix = import ../hackage/hedn-functor-0.1.0.0-r1-19bb13c88f157e702a9cda19a1d6e5bc278e81ca4f1551dc40f84e5fe1918a22.nix;
        revNum = 1;
        sha256 = "19bb13c88f157e702a9cda19a1d6e5bc278e81ca4f1551dc40f84e5fe1918a22";
      };
      r2 = {
        nix = import ../hackage/hedn-functor-0.1.0.0-r2-dec7deb8f8c9b096bb042dc05a7bd8592c6302632dc216b55365086aea321ca1.nix;
        revNum = 2;
        sha256 = "dec7deb8f8c9b096bb042dc05a7bd8592c6302632dc216b55365086aea321ca1";
      };
      r3 = {
        nix = import ../hackage/hedn-functor-0.1.0.0-r3-ab06565b5df1bf689860032309d89a687dc5fb91c21085781625a6986908effb.nix;
        revNum = 3;
        sha256 = "ab06565b5df1bf689860032309d89a687dc5fb91c21085781625a6986908effb";
      };
      default = "r3";
    };
  };
}