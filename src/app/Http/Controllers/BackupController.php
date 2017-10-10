<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
const BACKUP_PATH =  "../backup/";
class BackupController extends Controller
{
    public function index(Request $request)
    {
        return view('backup.backup.php.index');
    }
    public function backup(Request $request)
    {

        return view('backup.backup');
    }

}



