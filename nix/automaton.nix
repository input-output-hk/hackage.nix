{
  "1.3" = {
    sha256 = "fd0938dff8a26a6ae9b02d48841a69d1b6e9fbab8014c5a2538987c712d3af12";
    revisions = {
      r0 = {
        nix = import ../hackage/automaton-1.3-r0-10fac7266a52ba682a0ae4f356a2cf43d4ae4d07edca8e3eae738eb434b8bec8.nix;
        revNum = 0;
        sha256 = "10fac7266a52ba682a0ae4f356a2cf43d4ae4d07edca8e3eae738eb434b8bec8";
      };
      default = "r0";
    };
  };
  "1.4" = {
    sha256 = "d205e9bbce4763827c33ed1e6d39fe57c84fc7617c228c92c943f9538056043c";
    revisions = {
      r0 = {
        nix = import ../hackage/automaton-1.4-r0-45a1b08d0f154c5ecdf4bc0eab165359ec6524e079a0c604ef8a0798fcf90ba3.nix;
        revNum = 0;
        sha256 = "45a1b08d0f154c5ecdf4bc0eab165359ec6524e079a0c604ef8a0798fcf90ba3";
      };
      default = "r0";
    };
  };
}