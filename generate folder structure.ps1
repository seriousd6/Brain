
# Create directory structure
$folders = @(
    '.github/workflows',
    '_includes',
    '_layouts',
    'assets/css',
    'kb'
)

$folders | ForEach-Object { New-Item -ItemType Directory -Path $_ -Force }

# Create files
@{
    '.github/workflows/pages.yml' = ''
    '_includes/nav.html' = ''
    '_layouts/default.html' = ''
    '_layouts/kb.html' = ''
    'assets/css/site.css' = ''
    'kb/.gitkeep' = ''
    'kb/index.md' = ''
    '.gitignore' = ''
    '404.html' = ''
    'Gemfile' = ''
    '_config.yml' = ''
    'index.md' = ''
    'guidelines.md' = ''
}.GetEnumerator() | ForEach-Object {
    New-Item -ItemType File -Path $_.Key -Force
}