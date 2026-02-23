#!/bin/bash

# Array of issues to create
issues=(
  "Feature: User Authentication & Student Profiles|Add secure login system with role-based access control for students and administrators. Include profile management for student information."
  "Feature: Database Management UI|Create a web interface for administrators to browse, add, edit, and delete activities without coding. Support for viewing all participants."
  "Feature: Bulk Email System|Implement email functionality to send announcements and reminders to activity participants. Support customizable templates and mailing lists."
  "Feature: Participant List Export (CSV)|Allow administrators to export activity participant lists to CSV format for record-keeping and reporting."
  "Feature: Link Shortener|Integrate URL shortening to generate short, shareable links for activity signup pages."
  "Feature: Activity Logging & Audit Trail|Track all user actions including signups, unregistrations, and admin changes with timestamps for accountability."
  "Feature: Admin Dashboard with Analytics|Create a dashboard showing activity participation statistics, enrollment trends, and system metrics."
  "Feature: Certificate Generation|Generate and distribute digital certificates to students who complete activities for recognition and records."
  "Feature: Advanced Registration Forms|Build a dynamic form builder for creating custom registration forms with configurable fields beyond basic signup."
  "Feature: Dark/Light Theme Support|Add user preference toggle for light and dark mode themes across the application."
)

echo "Creating GitHub issues..."
for issue in "${issues[@]}"; do
  IFS='|' read -r title body <<< "$issue"
  echo "Creating: $title"
done
echo "Done!"
