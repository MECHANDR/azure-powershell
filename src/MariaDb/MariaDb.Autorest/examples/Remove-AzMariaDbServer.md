### Example 1: Remove a MariaDB
```powershell
Remove-AzMariaDbServer -Name mariadb-asd-01 -ResourceGroupName mariadb-test-qu5ov0

```

This command removes a MariaDB.

### Example 2: Remove a MariaDB
```powershell
Get-AzMariaDbServer -Name mariadb-bc-t01 -ResourceGroupName mariadb-test-qu5ov0 | Remove-AzMariaDbServer

```

This command removes a MariaDB.

