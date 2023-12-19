import { maxWidth } from "../../../.storybook/decorators";
import { FilePreview } from "./FilePreview";
import { File as FileUpload } from "./File";

export default {
  title: "uikit/File",
  decorators: [maxWidth(500)],
};

const file = {
  id: 1,
  name: "Договор о партнерстве",
  size: 324234,
};

const args = {
  title: "Файл договора",
  description: "Допустимый размер файла 15 Мб",
};

export const Preview = () => <FilePreview file={file} />;

export const PreviewEditable = () => <FilePreview file={file} edit remove />;

export const PreviewDownload = () => (
  <FilePreview file={{ ...file, url: "file-url" }} />
);

export const Upload = () => <FileUpload {...args} />;

export const Edit = () => <FileUpload {...args} file={file} />;