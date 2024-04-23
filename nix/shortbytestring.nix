{
  "0.1.0.0" = {
    sha256 = "dee9a5864f8fefa6b04dfcd45a92d8640038a37d761489ac7d18cc4cfb3853f2";
    revisions = {
      r0 = {
        nix = import ../hackage/shortbytestring-0.1.0.0-r0-b65a534f03eee496efaccc8ef5ba00e966589662c2ce6a0ba38e2112f025a09c.nix;
        revNum = 0;
        sha256 = "b65a534f03eee496efaccc8ef5ba00e966589662c2ce6a0ba38e2112f025a09c";
      };
      r1 = {
        nix = import ../hackage/shortbytestring-0.1.0.0-r1-4a7d9548eb9ac093f74725299782114b2f74b52717b24675ea3515faa8a76698.nix;
        revNum = 1;
        sha256 = "4a7d9548eb9ac093f74725299782114b2f74b52717b24675ea3515faa8a76698";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "da30c84471ab0c86dbfeca0fe80f8db33c42b652747f2a9a071235099c0599d7";
    revisions = {
      r0 = {
        nix = import ../hackage/shortbytestring-0.2.0.0-r0-8d22fc243d0d4d45e44186055205f8d113ba1f10ee5b121bb2b76400ae85fe00.nix;
        revNum = 0;
        sha256 = "8d22fc243d0d4d45e44186055205f8d113ba1f10ee5b121bb2b76400ae85fe00";
      };
      r1 = {
        nix = import ../hackage/shortbytestring-0.2.0.0-r1-d00c49b475fa2c602a8d9405545f594ca7f85051d3700a4668818e265e78f290.nix;
        revNum = 1;
        sha256 = "d00c49b475fa2c602a8d9405545f594ca7f85051d3700a4668818e265e78f290";
      };
      default = "r1";
    };
  };
  "0.2.1.0" = {
    sha256 = "5c18bf47309f237d737a74b9b4a062a7dc37d49d8b421aeea17851a092df3aaa";
    revisions = {
      r0 = {
        nix = import ../hackage/shortbytestring-0.2.1.0-r0-8c4a53cb770ec1b781a7c43c244e74ac05ae7550bb9de22838c2aad0a2da51b9.nix;
        revNum = 0;
        sha256 = "8c4a53cb770ec1b781a7c43c244e74ac05ae7550bb9de22838c2aad0a2da51b9";
      };
      default = "r0";
    };
  };
}