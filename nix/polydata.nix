{
  "0.1.0.0" = {
    sha256 = "1e1785b31d8fac68db19771440e564cec451a7cf0d4a8ac9f3bb634b4a2db7bb";
    revisions = {
      r0 = {
        nix = import ../hackage/polydata-0.1.0.0-r0-48024dd3e38636b0a7bc44a669693a1bd44df529e4f718b339271736b08ae29f.nix;
        revNum = 0;
        sha256 = "48024dd3e38636b0a7bc44a669693a1bd44df529e4f718b339271736b08ae29f";
      };
      r1 = {
        nix = import ../hackage/polydata-0.1.0.0-r1-2a13f5f9f2a608617e0fc21d8af90cfb7fd367eb0e94c111bdd6a2b3d3e89980.nix;
        revNum = 1;
        sha256 = "2a13f5f9f2a608617e0fc21d8af90cfb7fd367eb0e94c111bdd6a2b3d3e89980";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "d24fc958be69c6ad3375539b443fdfe3c75554cfa8120b01534c6fc0764b71e4";
    revisions = {
      r0 = {
        nix = import ../hackage/polydata-0.2-r0-112a88971b0cc9644fb874fd3f69a6ba273669d05d29d2814c37442cad661317.nix;
        revNum = 0;
        sha256 = "112a88971b0cc9644fb874fd3f69a6ba273669d05d29d2814c37442cad661317";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "d1910bf48254227698bf93bc432076c7101c690b8535e0d8f6765faf9638368f";
    revisions = {
      r0 = {
        nix = import ../hackage/polydata-0.3.0.0-r0-fd3f0cddf6cf1669524199ec443567e0b6c3fe5d38efe4b2b175ad0fbb2299c3.nix;
        revNum = 0;
        sha256 = "fd3f0cddf6cf1669524199ec443567e0b6c3fe5d38efe4b2b175ad0fbb2299c3";
      };
      default = "r0";
    };
  };
}