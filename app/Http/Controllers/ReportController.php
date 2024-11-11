<?php

namespace App\Http\Controllers;

use App\Models\Report;
use App\Http\Requests\StoreReportRequest;
use Symfony\Component\HttpFoundation\Response;

class ReportController extends Controller
{
    // List all reports (Admin only)
    public function index()
    {
        $this->authorize('viewAny', Report::class);
        $reports = Report::all();
        return response()->json($reports, Response::HTTP_OK);
    }

    // Show details of a specific report (Admin only)
    public function show($id)
    {
        $report = Report::findOrFail($id);
        $this->authorize('view', $report);
        return response()->json($report, Response::HTTP_OK);
    }

    // Store a new report (Admin only)
    public function store(StoreReportRequest $request)
    {
        $validated = $request->validated();
        $report = Report::create($validated);
        return response()->json($report, Response::HTTP_CREATED);
    }

    // Delete a report (Admin only)
    public function destroy($id)
    {
        $report = Report::findOrFail($id);
        $this->authorize('delete', $report);
        $report->delete();
        return response()->json(['message' => 'Report deleted successfully.'], Response::HTTP_OK);
    }
}
