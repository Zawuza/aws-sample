program get;

uses fphttpclient;

const URL = 'https://medium.com/@Zawuza/make-your-edits-aware-of-a-touch-keyboard-d06b86bf9637';

var HTTPClient: TFPHTTPClient;
    Page: string;
begin
HTTPClient := TFPHTTPClient.Create(nil);
Page := HTTPClient.Get(URL);
Writeln('Page: ' + Page);
end.