{
  "0.1.0.0" = {
    sha256 = "d7b2cbb7bf686342a36f1d89936773f0ea07849e5e291bcf2ced268f7a4d2766";
    revisions = {
      r0 = {
        nix = import ../hackage/translate-cli-0.1.0.0-r0-a861ffe95d38b78289237f94440d6c3efe86be6fff36afe2ecfd8560b7df8b17.nix;
        revNum = 0;
        sha256 = "a861ffe95d38b78289237f94440d6c3efe86be6fff36afe2ecfd8560b7df8b17";
      };
      default = "r0";
    };
  };
  "1.0.0.0" = {
    sha256 = "4239aed8e417c45ad63f9f2fcfd7280312369701e1734b9024a26fd16bcb7a4e";
    revisions = {
      r0 = {
        nix = import ../hackage/translate-cli-1.0.0.0-r0-21e014bbdf4f6e2ca7e8cc7c76f83fd36c758719fe0a4223e1bfc92d00bf6aa9.nix;
        revNum = 0;
        sha256 = "21e014bbdf4f6e2ca7e8cc7c76f83fd36c758719fe0a4223e1bfc92d00bf6aa9";
      };
      default = "r0";
    };
  };
}