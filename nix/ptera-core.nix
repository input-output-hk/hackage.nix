{
  "0.1.0.0" = {
    sha256 = "61de6b495fa1fe6887afd09ff098ec1b0e822603d9bcf85588e000864cb3efae";
    revisions = {
      r0 = {
        nix = import ../hackage/ptera-core-0.1.0.0-r0-b3ae824c4f16f5381676f181517bfb047b45cea84998b5b3fccc9350afb75ef5.nix;
        revNum = 0;
        sha256 = "b3ae824c4f16f5381676f181517bfb047b45cea84998b5b3fccc9350afb75ef5";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a5a838985c1bc290f486eaff6c3cfced6b0f381c91a6fb21bfda82e72aefe0ea";
    revisions = {
      r0 = {
        nix = import ../hackage/ptera-core-0.2.0.0-r0-3cbd6ba3f8e3a2e79302006b33b99fef61c29eb135bdcbd7a611ed3488652bc1.nix;
        revNum = 0;
        sha256 = "3cbd6ba3f8e3a2e79302006b33b99fef61c29eb135bdcbd7a611ed3488652bc1";
      };
      default = "r0";
    };
  };
}