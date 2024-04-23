{
  "0.1.0.0" = {
    sha256 = "acc6e7dd2f9caa56377f76624ecc29012e19bf8190c41738f0fcd898edaf2b08";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-type-modifiers-0.1.0.0-r0-be1e5d347ff479fd859ef81569937ca27383effb1f877cd313ede5c82f9ffb9f.nix;
        revNum = 0;
        sha256 = "be1e5d347ff479fd859ef81569937ca27383effb1f877cd313ede5c82f9ffb9f";
      };
      r1 = {
        nix = import ../hackage/testing-type-modifiers-0.1.0.0-r1-cbd718034a14a8dd4f31bab57cca0fb7634d23b5535356d221bcdab451daf776.nix;
        revNum = 1;
        sha256 = "cbd718034a14a8dd4f31bab57cca0fb7634d23b5535356d221bcdab451daf776";
      };
      r2 = {
        nix = import ../hackage/testing-type-modifiers-0.1.0.0-r2-0203421307ad5631b1665d07c3cee85d8c366630335016cf8f2fd280f2f12ca3.nix;
        revNum = 2;
        sha256 = "0203421307ad5631b1665d07c3cee85d8c366630335016cf8f2fd280f2f12ca3";
      };
      default = "r2";
    };
  };
  "0.1.0.1" = {
    sha256 = "050bdade2c6f0122b1a04a3833ab7eea2399ffda8258bca6d93ba6614bb202f2";
    revisions = {
      r0 = {
        nix = import ../hackage/testing-type-modifiers-0.1.0.1-r0-986ee8947b7c82a0879116cf7110f44b0ef62eb903dce3efaa1acbbe50dc779d.nix;
        revNum = 0;
        sha256 = "986ee8947b7c82a0879116cf7110f44b0ef62eb903dce3efaa1acbbe50dc779d";
      };
      default = "r0";
    };
  };
}