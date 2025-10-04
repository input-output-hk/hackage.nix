{
  "1.0.0.0" = {
    sha256 = "c0d1cf9067b8b2eb924e962558d21c8231660b3516ef2203bbcfdaacaf0f1193";
    revisions = {
      r0 = {
        nix = import ../hackage/oalg-abg-1.0.0.0-r0-1f16793b0903253d44fcd54d98cc41e4a2ad6b06b70464bc20e86adbb76b162b.nix;
        revNum = 0;
        sha256 = "1f16793b0903253d44fcd54d98cc41e4a2ad6b06b70464bc20e86adbb76b162b";
      };
      default = "r0";
    };
  };
  "2.0.0.0" = {
    sha256 = "b98e50d248588c01dee2933dedc63cb749a49d6479963fe95dc686da6de04167";
    revisions = {
      r0 = {
        nix = import ../hackage/oalg-abg-2.0.0.0-r0-9b7c92ff0a6a9c8ae782c85c35519c0475a553fb5457642789488117ba4313f8.nix;
        revNum = 0;
        sha256 = "9b7c92ff0a6a9c8ae782c85c35519c0475a553fb5457642789488117ba4313f8";
      };
      default = "r0";
    };
  };
}