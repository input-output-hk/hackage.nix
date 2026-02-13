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
}