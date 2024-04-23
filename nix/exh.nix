{
  "0.1.0" = {
    sha256 = "a8c08363f40948c54aa596d6abac6783ab8333dc590e80e9ad34c5a2b48e2064";
    revisions = {
      r0 = {
        nix = import ../hackage/exh-0.1.0-r0-bad10aaa4ab7df7f3783093c5423f63dcad037de7ac7f2292cc2a02cebdb7294.nix;
        revNum = 0;
        sha256 = "bad10aaa4ab7df7f3783093c5423f63dcad037de7ac7f2292cc2a02cebdb7294";
      };
      r1 = {
        nix = import ../hackage/exh-0.1.0-r1-b3d1510fd77255670b4ce036ccee02e37991a81db11b230eb12e0c012bf974c5.nix;
        revNum = 1;
        sha256 = "b3d1510fd77255670b4ce036ccee02e37991a81db11b230eb12e0c012bf974c5";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "1f19b3849ba88a49ee49ffcc199cfdf76df13c872504601aa07dafff6b1a6ade";
    revisions = {
      r0 = {
        nix = import ../hackage/exh-0.2.0-r0-d5b3cfe56b813729b9e4153b66fbadca64065b3eda6cb6efc7bc4934438f4234.nix;
        revNum = 0;
        sha256 = "d5b3cfe56b813729b9e4153b66fbadca64065b3eda6cb6efc7bc4934438f4234";
      };
      default = "r0";
    };
  };
  "1.0.0" = {
    sha256 = "f45cca98056a189cf7c5a563737f31fa6eceee243c01baeb319bf4ab4dcaab68";
    revisions = {
      r0 = {
        nix = import ../hackage/exh-1.0.0-r0-5a88f4f07c385400c39e9b4211081d46ec8d4c6852d3a2688eb864a09078d8f0.nix;
        revNum = 0;
        sha256 = "5a88f4f07c385400c39e9b4211081d46ec8d4c6852d3a2688eb864a09078d8f0";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "c028275ad61115e7e90df255e7a040e749217bfc83c5bd95fc02d7aaa34eac25";
    revisions = {
      r0 = {
        nix = import ../hackage/exh-1.0.1-r0-856dbd7d88092f118f865661557159ee7c333822a63d055904929bb25e83f6e9.nix;
        revNum = 0;
        sha256 = "856dbd7d88092f118f865661557159ee7c333822a63d055904929bb25e83f6e9";
      };
      default = "r0";
    };
  };
  "1.0.2" = {
    sha256 = "d62bb181a69141f63586d1d60e2c82c1467cdb498f44ccd0cdea38a13ccafb82";
    revisions = {
      r0 = {
        nix = import ../hackage/exh-1.0.2-r0-3a6c153d9ea56daf91bc69b57d00ee8bf71632848e920d79136c1e999568bb91.nix;
        revNum = 0;
        sha256 = "3a6c153d9ea56daf91bc69b57d00ee8bf71632848e920d79136c1e999568bb91";
      };
      default = "r0";
    };
  };
}