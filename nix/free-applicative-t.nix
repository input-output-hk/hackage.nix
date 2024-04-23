{
  "0.1.0.0" = {
    sha256 = "d69be2c73f3b7890c93b5bd8de9a216d72ecb9775c3ebf8522d48d427cac6a95";
    revisions = {
      r0 = {
        nix = import ../hackage/free-applicative-t-0.1.0.0-r0-4bd6fee0fc6c5f7af76f061eebbb4565cbda4ce4077d074bc5b41ce6fc0e1158.nix;
        revNum = 0;
        sha256 = "4bd6fee0fc6c5f7af76f061eebbb4565cbda4ce4077d074bc5b41ce6fc0e1158";
      };
      r1 = {
        nix = import ../hackage/free-applicative-t-0.1.0.0-r1-374a314667d95f612568233c43e8bde6d838075d22a5fef93386d5a8cfbbc601.nix;
        revNum = 1;
        sha256 = "374a314667d95f612568233c43e8bde6d838075d22a5fef93386d5a8cfbbc601";
      };
      default = "r1";
    };
  };
}