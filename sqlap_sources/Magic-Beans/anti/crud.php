<?php
class CustomBugs extends BaseBugs
{
  public function assignUser(Accounts $a)
  {
    $this->assigned_to = $a->account_id;
    $this->save();
    mail($a->email, "バグ担当に任命されました",
      "あなたはバグ #{$this->bug_id} の修正担当に任命されました。");
  }
}
