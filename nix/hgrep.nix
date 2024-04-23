{
  "0.0" = {
    sha256 = "de61ad663b50e4a2dd16adcd93c324f834316d6a84d439b47d8a92174c14f795";
    revisions = {
      r0 = {
        nix = import ../hackage/hgrep-0.0-r0-778d4d9fd278c5305c71fb3ea163e7444fe3e1b8792d49183763f544a1813639.nix;
        revNum = 0;
        sha256 = "778d4d9fd278c5305c71fb3ea163e7444fe3e1b8792d49183763f544a1813639";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "4ed538434519ea90b850cb697252b681e5edadb27cc1382e0ddb237e89b0addd";
    revisions = {
      r0 = {
        nix = import ../hackage/hgrep-0.1-r0-1f1c59fadbe83b8401f0f83b35719ed863176d09648c23b7f46ecd2bc6af44ff.nix;
        revNum = 0;
        sha256 = "1f1c59fadbe83b8401f0f83b35719ed863176d09648c23b7f46ecd2bc6af44ff";
      };
      default = "r0";
    };
  };
}