{
  "0.0.0.0" = {
    sha256 = "303d5e00e00d099c44788c5a6a318e65bd6af329309870f87f7ccceeff09f108";
    revisions = {
      r0 = {
        nix = import ../hackage/prometheus-wai-0.0.0.0-r0-d951fc9d6cc63a843a5d466dbcec065c9f3a54fe9f7685027f457624441abb08.nix;
        revNum = 0;
        sha256 = "d951fc9d6cc63a843a5d466dbcec065c9f3a54fe9f7685027f457624441abb08";
      };
      default = "r0";
    };
  };
  "0.0.0.1" = {
    sha256 = "36322b10a6d2786e1a3dc97dc4f5711478b60e66350d02512d94067bd0523dd0";
    revisions = {
      r0 = {
        nix = import ../hackage/prometheus-wai-0.0.0.1-r0-a2321e049ab872af8e8dbb10c4f47dd319b3f9abb9852acb92d688fd293cf2a9.nix;
        revNum = 0;
        sha256 = "a2321e049ab872af8e8dbb10c4f47dd319b3f9abb9852acb92d688fd293cf2a9";
      };
      default = "r0";
    };
  };
}