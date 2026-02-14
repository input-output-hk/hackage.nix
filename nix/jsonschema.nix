{
  "0.2.0.0" = {
    sha256 = "ae8989e1269d0849b331c8e3a100183916f9db6492ee8138a536e1407d7d58dd";
    revisions = {
      r0 = {
        nix = import ../hackage/jsonschema-0.2.0.0-r0-4706bd9be67b47852da1c39abaa87f95eaa1854131b37f3fd9ef90dc2d44621a.nix;
        revNum = 0;
        sha256 = "4706bd9be67b47852da1c39abaa87f95eaa1854131b37f3fd9ef90dc2d44621a";
      };
      r1 = {
        nix = import ../hackage/jsonschema-0.2.0.0-r1-5b88c5c929c7344834113aec13f470fb8b9f7aefc2602c8ed2a80760cca9d7e0.nix;
        revNum = 1;
        sha256 = "5b88c5c929c7344834113aec13f470fb8b9f7aefc2602c8ed2a80760cca9d7e0";
      };
      default = "r1";
    };
  };
  "0.2.0.1" = {
    sha256 = "ca395451e19b21dde2eaad0c661dc0130bbf3e745730b2db05727d1e990d217c";
    revisions = {
      r0 = {
        nix = import ../hackage/jsonschema-0.2.0.1-r0-32f465b1b4f94574a3e081c9d339b7ea0346fd364eacaa17955425b6be5d5342.nix;
        revNum = 0;
        sha256 = "32f465b1b4f94574a3e081c9d339b7ea0346fd364eacaa17955425b6be5d5342";
      };
      default = "r0";
    };
  };
}