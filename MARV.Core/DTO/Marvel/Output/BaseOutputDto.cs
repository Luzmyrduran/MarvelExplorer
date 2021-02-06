using System;
using System.Collections.Generic;
using System.Text;

namespace MARV.Core.DTO.Marvel.Output
{
    public class BaseOutputDto
    {
        public string Status { get; set; }

        public DataOutputDto Data { get; set; }
    }

    public class DataOutputDto
    {
        public int Offset { get; set; }

        public int Limit { get; set; }

        public int Total { get; set; }

        public int Count { get; set; }

        public List<ResultOutputDto> Results { get; set; }
    }

    public class ResultOutputDto
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public string Modified { get; set; }

        public ThumbnailOutputDto Thumbnail { get; set; }

        public string ResourceURI { get; set; }

        public List<UrlsOutputDto> Urls { get; set; }
    }

    public class ThumbnailOutputDto
    {
        public string Path { get; set; }

        public string Extension { get; set; }
    }

    public class UrlsOutputDto
    {
        public string Type { get; set; }

        public string Url { get; set; }
    }
}
