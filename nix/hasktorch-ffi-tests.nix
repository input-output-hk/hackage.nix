{
  "0.0.1.0" = {
    sha256 = "8c7e5c80af383ee1a4b033f8a05d2a37a402e90bf3f85be684a50387f9d8a020";
    revisions = {
      r0 = {
        nix = import ../hackage/hasktorch-ffi-tests-0.0.1.0-r0-fad4e63725e07287a3734de1f1d35f6a8b831b63906129ecdff2f23dec0f52ed.nix;
        revNum = 0;
        sha256 = "fad4e63725e07287a3734de1f1d35f6a8b831b63906129ecdff2f23dec0f52ed";
      };
      r1 = {
        nix = import ../hackage/hasktorch-ffi-tests-0.0.1.0-r1-38edb5a38e1b26ec6a2e55bb7be064e0e94d5b2cfb8d6b5d9d42e652b4aefe4a.nix;
        revNum = 1;
        sha256 = "38edb5a38e1b26ec6a2e55bb7be064e0e94d5b2cfb8d6b5d9d42e652b4aefe4a";
      };
      default = "r1";
    };
  };
}