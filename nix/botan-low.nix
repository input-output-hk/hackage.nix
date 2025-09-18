{
  "0.0.1.0" = {
    sha256 = "6d7f8ef106c2197546c231c57fb6d072812b9b41e674ea92bb0d06bf696ca42e";
    revisions = {
      r0 = {
        nix = import ../hackage/botan-low-0.0.1.0-r0-bbbed743058c963826032b592eca0963935c0b67000255129af6f46aea86b43d.nix;
        revNum = 0;
        sha256 = "bbbed743058c963826032b592eca0963935c0b67000255129af6f46aea86b43d";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "453c3e6274cdb22d7bda1a2594b08f63fba67a759aede9e978c70ed09850509b";
    revisions = {
      r0 = {
        nix = import ../hackage/botan-low-0.0.2.0-r0-3f8b1af22db0779ab02a32c730bfe5aa8565a5ceda2ecf103070cc90db5c3cfe.nix;
        revNum = 0;
        sha256 = "3f8b1af22db0779ab02a32c730bfe5aa8565a5ceda2ecf103070cc90db5c3cfe";
      };
      default = "r0";
    };
  };
}