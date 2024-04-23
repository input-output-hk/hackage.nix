{
  "0.1.0.0" = {
    sha256 = "724b20942200bfd2bdd24916b96b8cbc793511b23ea0b200073fc651e15614ad";
    revisions = {
      r0 = {
        nix = import ../hackage/docrecords-0.1.0.0-r0-334ff0dcf6d08cb95a13f8b4282468522fe74270aea7b02719992d29a60f979b.nix;
        revNum = 0;
        sha256 = "334ff0dcf6d08cb95a13f8b4282468522fe74270aea7b02719992d29a60f979b";
      };
      r1 = {
        nix = import ../hackage/docrecords-0.1.0.0-r1-36ceb9c2a5fe3f4851a6268e79215e086f34877c319c0cea6c394f7a915a23b0.nix;
        revNum = 1;
        sha256 = "36ceb9c2a5fe3f4851a6268e79215e086f34877c319c0cea6c394f7a915a23b0";
      };
      default = "r1";
    };
  };
}