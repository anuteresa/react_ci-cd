from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
from google.oauth2 import service_account
from googleapiclient.http import MediaFileUpload
import datetime
import sys
from multiprocessing import Process


def get_service(api_name, api_version, scopes, key_file_location):
    """Get a service that communicates to a Google API.

    """

    credentials = service_account.Credentials.from_service_account_file(
        key_file_location)

    scoped_credentials = credentials.with_scopes(scopes)

    # Build the service object.
    service = build(api_name, api_version, credentials=scoped_credentials)

    return service


def main():
    """Shows basic usage of the Drive v3 API.
    Prints the names and ids of the first 10 files the user has access to.
    """

    # Define the auth scopes to request.
    scope = 'https://www.googleapis.com/auth/drive'
    today = datetime.date.today().strftime("%d_%m_%Y")
    date = {today}
    print(date)
    key_file_location = '/upload.json'

    try:
        # Authenticate and construct service.
        service = get_service(
            api_name='drive',
            api_version='v3',
            scopes=[scope],
            key_file_location=key_file_location)

        # Call the Drive v3 API

        path = f"/backup.sq"
        file_metadata = {"name": backup.sql", "parents": ["1nxUiDSYgXByyTiDzjjQa1fy1jZNebJDU"]}
        media = MediaFileUpload(path,
                                mimetype='application/sql')
        # pylint: disable=maybe-no-member
        service.files().create(body=file_metadata, media_body=media,
                               fields='id').execute()




    except HttpError as error:

       print(F'An error occurred: {error}')
      


if __name__ == '__main__':
    main()
